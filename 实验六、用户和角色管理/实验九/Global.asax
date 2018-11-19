<%@ Application Language="C#" %>

<script RunAt="server">
    void Profile_MigrateAnonymous(Objectsender,ProfileMigrateEventArgs pe) {
        ProfileCommon anonProfile = Profile.GetProfile(pe.AnonymousID); 
        if(anonProfile.Cart.ProId.Count !=0) {
            Profile.Cart.ProId=anonProfile.Cart.ProId; 
            Profile.Cart.ProName=anonProfile.Cart.ProName; 
            Profile.Cart.ListPrice=anonProfile.Cart.ListPrice;
            Profile.Cart.Qty=anonProfile.Cart.Qty;
        }
        ProfileManager.DeleteProfile(pe.AnonymousID);
        AnonymousIdentificationModule.ClearAnonymousIdentifier();
} 
  }       
</script>
