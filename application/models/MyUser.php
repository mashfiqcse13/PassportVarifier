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
class MyUser extends CI_Model {

    function apply_for_passport() {
        $img_urls = $this->do_upload();
        
        

        $data = array(
            "name" => $this->input->post("name"),
            "address" => $this->input->post("address"),
            "district_id" => $this->input->post("district_id"),
            "union_id" => $this->input->post("upazila_id"),
            "upzila_id" => $this->input->post("union_id"),
            "father_name" => $this->input->post("father_name"),
            "mother_name" => $this->input->post("mother_name"),
            "gender" => $this->input->post("sex"),
            "nid" => $this->input->post("nid"),
            "pic_url" => $img_urls['pic_url'],
            "nid_url" => $img_urls['nid_url'] ,
            "fingure_print_url" => $img_urls['fingure_print_url'],
            "gender" => $this->input->post("sex")
        );
        
        $result = $this->db->insert("ps_user_info", $data);
    }

    function do_upload() {


        $config['upload_path'] =  './uploads/';
        $config['allowed_types'] = 'gif|jpg|png';
//        $config['max_size'] = '2000';
//        $config['max_width'] = '1024';
//        $config['max_height'] = '768';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('photo_url')) {
            print_r($this->upload->display_errors());
            exit();
        } else {
            $temp =$this->upload->data();
            $data['pic_url'] = $temp['file_name'];
            
        }
        
        if (!$this->upload->do_upload('nid_url')) {
            print_r($this->upload->display_errors());
            exit();
        } else {
            $temp =$this->upload->data();
            $data['nid_url'] =  $temp['file_name'];
        }
        
        if (!$this->upload->do_upload('fingure_print_url')) {
            print_r($this->upload->display_errors());
            exit();
        } else {
            $temp =$this->upload->data();
            $data['fingure_print_url'] =  $temp['file_name'];
        }
        return $data;
    }

}
