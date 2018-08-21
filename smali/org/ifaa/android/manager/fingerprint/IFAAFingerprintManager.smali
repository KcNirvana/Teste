.class public abstract Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;
.super Ljava/lang/Object;
.source "IFAAFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAACryptoObject;,
        Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationResult;,
        Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationCallback;
    }
.end annotation


# instance fields
.field private privateContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;->privateContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAACryptoObject;Landroid/os/CancellationSignal;ILorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationCallback;Landroid/os/Handler;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract hasEnrolledFingerprints()Z
.end method

.method public abstract isHardwareDetected()Z
.end method
