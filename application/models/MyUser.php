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
//`id_user_info`, `user_id`, `name`, `address`, `district_id`, `union_id`, `upzila_id`, 
//        `father_name`, `mother_name`, `gender`, `nid`, `pic_url`, `nid_url`, `fingure_print_url`,
//        `is_paid`, `is_police_varified`,
//        `is_address_varified`, `is_identified`, `identifier_id`, `is_other_varified`, `other_varification_id`

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
            "gender" => $this->input->post("sex")
        );
        $result = $this->db->insert("ps_user_info",$data);
        
        
    }

}
