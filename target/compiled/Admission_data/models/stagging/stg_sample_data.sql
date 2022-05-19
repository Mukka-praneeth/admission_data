


select *
from AdmissionData

  -- this filter will only be applied on an incremental run
  where DateInserted >= (select max(DateInserted) from AdmissionData)

