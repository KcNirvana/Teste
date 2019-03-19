.class public abstract Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IPublicSearchServiceSession.java"

# interfaces
.implements Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession"

    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x0

    return v2

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub;->onGenericClientEvent([B)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub;->onGenericClientEventWithSystemParcelable([BLcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
