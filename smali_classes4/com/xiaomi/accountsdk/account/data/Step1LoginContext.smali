.class public Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
.super Ljava/lang/Object;
.source "Step1LoginContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

.field private mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->notificationUrl:Ljava/lang/String;

    new-instance v1, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->loginContent:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->step1Token:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->notificationUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getLoginContent()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->loginContent:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getMetaLoginData()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getStep1Token()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->step1Token:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLoginContext()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    return-object v0
.end method

.method public getNextStep()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    check-cast p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->notificationUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->loginContent:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_1

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    check-cast p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->sign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->qs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->callback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->step1Token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_2
    :goto_0
    return-void
.end method
