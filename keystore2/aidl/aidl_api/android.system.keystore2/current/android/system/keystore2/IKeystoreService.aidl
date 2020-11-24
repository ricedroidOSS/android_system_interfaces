///////////////////////////////////////////////////////////////////////////////
// THIS FILE IS IMMUTABLE. DO NOT EDIT IN ANY CASE.                          //
///////////////////////////////////////////////////////////////////////////////

// This file is a snapshot of an AIDL interface (or parcelable). Do not try to
// edit this file. It looks like you are doing that because you have modified
// an AIDL interface in a backward-incompatible way, e.g., deleting a function
// from an interface or a field from a parcelable and it broke the build. That
// breakage is intended.
//
// You must not make a backward incompatible changes to the AIDL files built
// with the aidl_interface module type with versions property set. The module
// type is used to build AIDL files in a way that they can be used across
// independently updatable components of the system. If a device is shipped
// with such a backward incompatible change, it has a high risk of breaking
// later when a module using the interface is updated, e.g., Mainline modules.

package android.system.keystore2;
@VintfStability
interface IKeystoreService {
  android.system.keystore2.IKeystoreSecurityLevel getSecurityLevel(in android.hardware.keymint.SecurityLevel securityLevel);
  android.system.keystore2.KeyEntryResponse getKeyEntry(in android.system.keystore2.KeyDescriptor key);
  void updateSubcomponent(in android.system.keystore2.KeyDescriptor key, in @nullable byte[] publicCert, in @nullable byte[] certificateChain);
  android.system.keystore2.KeyDescriptor[] listEntries(in android.system.keystore2.Domain domain, in long nspace);
  void deleteKey(in android.system.keystore2.KeyDescriptor key);
  android.system.keystore2.KeyDescriptor grant(in android.system.keystore2.KeyDescriptor key, in int granteeUid, in int accessVector);
  void ungrant(in android.system.keystore2.KeyDescriptor key, in int granteeUid);
}