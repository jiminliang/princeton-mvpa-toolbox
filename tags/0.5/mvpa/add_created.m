function [subj] = add_created(subj,objtype,objname,new_creat)

% Makes it easier to add the object-creation data easier
%
% [SUBJ] = ADD_CREATED(SUBJ,OBJTYPE,OBJNAME,NEW_CREAT)
%
% Basically, you can feed it an entire NEW_CREAT structure, and
% it will add any fields that didn't already exist, overwrite any
% that did, but leave intact those that were already there.


old_creat = get_objfield(subj,objtype,objname,'created');
both_creat = add_struct_fields(new_creat,old_creat);

subj = set_objfield(subj,objtype,objname,'created',new_creat,'ignore_created',true);