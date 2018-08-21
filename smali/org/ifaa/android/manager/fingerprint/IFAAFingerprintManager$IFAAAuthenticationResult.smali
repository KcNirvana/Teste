.class public Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationResult;
.super Ljava/lang/Object;
.source "IFAAFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IFAAAuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAACryptoObject;

.field private mFingerprint:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;


# direct methods
.method public constructor <init>(Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAACryptoObject;Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationResult;->mCryptoObject:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAACryptoObject;

    iput-object p2, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationResult;->mFingerprint:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;

    return-void
.end method


# virtual methods
.method public getCryptoObject()Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAACryptoObject;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationResult;->mCryptoObject:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAACryptoObject;

    return-object v0
.end method

.method public getFingerprint()Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationResult;->mFingerprint:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprint;

    return-object v0
.end method
