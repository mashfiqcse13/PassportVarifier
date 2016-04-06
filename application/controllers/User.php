<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of User
 *
 * @author MD. Mashfiq
 */
class User extends CI_Controller {

    function __construct() {
        parent::__construct();
//
        $this->load->helper(array('form', 'url'));
//        $this->load->library('form_validation');
//        $this->load->helper('security');
//        $this->load->library('tank_auth');
//        $this->lang->load('tank_auth');
//
//        if (!$this->tank_auth->is_logged_in()) {         // logged in
//            redirect('auth');
//        }
    }
    
    function index(){
        $this->load->view("admin/dashboard");
    }

}
