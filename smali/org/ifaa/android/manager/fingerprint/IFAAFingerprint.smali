.class public final Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;
.super Ljava/lang/Object;
.source "IFAAFingerprint.java"


# instance fields
.field private mDeviceId:J

.field private mFingerId:I

.field private mGroupId:I

.field private mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mName:Ljava/lang/CharSequence;

    iput p2, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mGroupId:I

    iput p3, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mFingerId:I

    iput-wide p4, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mDeviceId:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mDeviceId:J

    return-wide v0
.end method

.method public getFingerId()I
    .locals 1

    iget v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mFingerId:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mGroupId:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mFingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
