package com.hk.dutyfree.user;

import java.util.List;

public interface UserMapper {
	public abstract int join(User u);
	public abstract int join2(Passport p);
	public abstract int update(User u);
	public abstract User getMemberById(User u);
	public abstract int bye(User u);
	public abstract List<User> getAllMember();
}
