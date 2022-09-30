CREATE PROCEDURE `udp_modify_user` (address VARCHAR(30), town VARCHAR(30))
BEGIN
	update users
	set age = age+10
	where id = (select user_id from addresses as a where a.address = `address` and a.town =`town`);
END
