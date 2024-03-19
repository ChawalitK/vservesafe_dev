CREATE TRIGGER `after_insert_shecup_fsms_answers` AFTER INSERT ON `shecup_fsms_answers`
 FOR EACH ROW update shecup_fsms_audit 
 set total_score = (select sum(score) from shecup_fsms_answers where audit_id = new.audit_id and compliance_status != 'N/A'),
 total_point = (select sum(point) from shecup_fsms_answers where audit_id = new.audit_id and compliance_status != 'N/A'),
  total_answer = (select count(id) from shecup_fsms_answers where audit_id = new.audit_id and compliance_status != 'N/A'),
  total_na = (select count(id) from shecup_fsms_answers where audit_id = new.audit_id and compliance_status = 'N/A') 
where id = new.audit_id



INSERT INTO `shecup_fsms_answers` (`id`, `company_id`, `audit_id`, `section_id`, `question_no`, `score`, `point`, `compliance_status`, `finding`, `standard`, `root_cause`, `correction`, `corrective_action`, `created`, `updated`) VALUES (NULL, '1', '1111', '1', '1.1', '5', '5', 'Compliance', NULL, NULL, NULL, NULL, NULL, current_timestamp(), current_timestamp());