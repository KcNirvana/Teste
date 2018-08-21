.class public abstract Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationCallback;
.super Ljava/lang/Object;
.source "IFAAFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IFAAAuthenticationCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationResult;)V
    .locals 0

    return-void
.end method
