<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Email extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('download');
        $this->load->model('userform_model');
        $this->load->model('hrd_model');
        $this->load->model('email_model');
        $this->load->model('lowongan_model');
        $this->load->model('download_model');
        $this->load->library('upload');
        $this->load->library(array('session'));
        $email = $this->session->userdata("email_hrd");
      $this->aku = $this->hrd_model->get_id_by_email($email);
    }

    function sendemail() {
        $data['aku'] = $this->aku;
        $idhrd = $this->aku['id_hrd'];
        $datahrd = $this->hrd_model->get_hrd($idhrd);
        $username = $datahrd->username_hrd;

        $status = $this->uri->segment(3);
        //buat direct linknyaa hehe

        $link = $this->uri->segment(5);
        $info = urldecode($link); 

        if($info == "interview user"){
          $url = "interviewuser";  
        } elseif($info == "interview hrd"){
          $url = "interviewhrd";  
        } elseif($info == "skill test"){
          $url = "skilltest";  
        } else {
            $url = $link;
        }
         


        $status2= urldecode($status);
        if($status2 == "shortlist"){
            redirect(base_url('app/'.$url));
        }
        $idapply = $this->uri->segment(4);


        $where1 = array( 'id_apply' => $idapply );
        $fileinfo = $this->lowongan_model->get_data($where1,'apply');
        //1. buat ndapetin email si user
        $iduser = $fileinfo->iduser; //buat nyari emailnya
        $infoapply = $fileinfo->id_apply;
        $where2 = array( 'iduser' => $iduser );
        $user =  $this->lowongan_model->get_data($where2,'user_register');
        $tujuan = $user->email;

        //2. buat ndapetin email yang sesuai
        $where3 = array( 'status' => $status2 );
        $email =  $this->email_model->get_template($where3);
        $subjek = $email->subjek;
        $konten = $email->konten;
       
        $ci = get_instance();
        $ci->load->library('email');
        $config['protocol'] = "smtp";
        $config['smtp_host'] = "ssl://smtp.gmail.com";
        $config['smtp_port'] = "465";
        $config['smtp_user'] = "hrmanagerdetik@gmail.com";
        $config['smtp_pass'] = "detik123";
        $config['charset'] = "iso-8859-1";
        $config['mailtype'] = "html";
        $config['newline'] = "\r\n";
        $config['wordwrap'] = TRUE;        
        
        $ci->email->initialize($config);
        $ci->email->from("hrmanagerdetik@gmail.com", $username);
        $list = array($tujuan);
        $ci->email->to($list);
        $ci->email->subject($subjek);
        $ci->email->message($konten);
        if ($this->email->send()) {
            $this->session->set_flashdata('pesan',
            '<div id=id class="alert alert-success alert-dismissable" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <strong>Status berhasil di rubah</strong>
                            </div>');
            // print_r($url); die;
               redirect(base_url('app/'.$url)); 
                         
        } else {
            echo "<script>alert('User gagal bertambah');</script>";
                        $this->session->set_flashdata('pesan',
                            '<div id=id class="alert alert-danger" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <strong>Email gagal di kirim</strong>
                            </div>');
                        //redirect($this->uri->uri_string());

                            $data_masukgagal = array(
                              'status'           => $info 
                              );
                            $wheregagal = array( 'id_apply' => $infoapply );
                            $this->lowongan_model->update_data($wheregagal,$data_masukgagal,'apply');
                         redirect(base_url('app/'.$url));
            // show_error($this->email->print_debugger());
        }
    }

    public function tabelemail(){
        $data['template'] = $this->email_model->ambil_template()->result();
        $data["masuk"] = 12;
        $this->load->view('admin/email/table_email', $data);
    }

    public function editemail(){
        $where = array('id_template' => $this->uri->segment(3));
        $data['template'] = $this->email_model->get_template($where);
        //print_r($data);
        $this->load->view('admin/email/form_editemail',$data);
    }

    public function updateemail(){
        $where = array('id_template' => $this->uri->segment(3));
    $data_masuk = array( 
        'nm_template' => $this->input->post('nm_template'),
        'subjek' => $this->input->post('subjek'),
        'konten' => $this->input->post('konten')
        );
       $this->email_model->update_template($where, $data_masuk);

       $info = $this->email_model->get_template($where);
        if ($info >=1){
        $this->session->set_flashdata('pesan',
            '<div id=id class="alert alert-success alert-dismissable" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <strong>Email berhasil di rubah</strong>
                            </div>');
                        redirect(base_url('email/tabelemail'));
                    } else {
                        echo "<script>alert('User gagal bertambah');</script>";
                        $this->session->set_flashdata('pesan',
                            '<div id=id class="alert alert-danger" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <strong>Email gagal di ubah!</strong>
                            </div>');
                        redirect(base_url('email/tabelemail'));
                    }
    }

    public function hapusemail(){
        $idtemplate = $this->uri->segment(3);
        $where = array( 'id_template' => $idtemplate);
        $this->email_model->delete_template($where);
        $info = $this->email_model->get_template($where);
        if ($info ==null){
        $this->session->set_flashdata('pesan',
            '<div id=id class="alert alert-success alert-dismissable" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <strong>Email berhasil di hapus</strong>
                            </div>');
                        redirect(base_url('email/tabelemail'));
                    } else {
                        echo "<script>alert('User gagal bertambah');</script>";
                        $this->session->set_flashdata('pesan',
                            '<div id=id class="alert alert-danger" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <strong>Email gagal di hapus!</strong>
                            </div>');
                        redirect(base_url("email/tabelemail"));
                    }
    }
}