.class public Lcom/ali/user/mobile/account/bean/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GENDER_FEMALE:Ljava/lang/String; = "f"

.field public static final GENDER_MALE:Ljava/lang/String; = "m"

.field private static final sBooleanFalse:Ljava/lang/String;

.field private static final sBooleanTrue:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private autoLogin:Ljava/lang/String;

.field private customerType:Ljava/lang/String;

.field private exterToken:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private havanaId:Ljava/lang/String;

.field private isBindCard:Ljava/lang/String;

.field private isCertified:Ljava/lang/String;

.field private isNewUser:Ljava/lang/String;

.field private isShowWalletEditionSwitch:Ljava/lang/String;

.field private isWirelessUser:Ljava/lang/String;

.field private loginEmail:Ljava/lang/String;

.field private loginMobile:Ljava/lang/String;

.field private loginTime:Ljava/lang/String;

.field private loginToken:Ljava/lang/String;

.field private logonId:Ljava/lang/String;

.field private memberGrade:Ljava/lang/String;

.field private mobileNumber:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private noPayPwd:Ljava/lang/String;

.field private noQueryPwdUser:Ljava/lang/String;

.field private otherLoginId:Ljava/lang/String;

.field private realName:Ljava/lang/String;

.field private realNamed:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private shippingAddressCount:Ljava/lang/String;

.field private studentCertify:Ljava/lang/String;

.field private taobaoNick:Ljava/lang/String;

.field private taobaoSid:Ljava/lang/String;

.field private userAvatar:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userType:Ljava/lang/String;

.field private walletEdition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanTrue:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanFalse:Ljava/lang/String;

    new-instance v0, Lcom/ali/user/mobile/account/bean/UserInfo$1;

    invoke-direct {v0}, Lcom/ali/user/mobile/account/bean/UserInfo$1;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanFalse:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanFalse:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->logonId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userAvatar:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->autoLogin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->noPayPwd:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isCertified:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->taobaoSid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->exterToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isWirelessUser:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isBindCard:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->realNamed:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->customerType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isNewUser:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->havanaId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->memberGrade:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->walletEdition:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->nick:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->realName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->taobaoNick:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginEmail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginMobile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->studentCertify:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->shippingAddressCount:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->gender:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->otherLoginId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->noQueryPwdUser:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomerType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->customerType:Ljava/lang/String;

    return-object v0
.end method

.method public getExternToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->exterToken:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getHavanaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->havanaId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAutoLoginStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->autoLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBindCardStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isBindCard:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCertified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isCertified:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNewUserStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isNewUser:Ljava/lang/String;

    return-object v0
.end method

.method public getIsWirelessUserStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isWirelessUser:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberGrade()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->memberGrade:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniMode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->walletEdition:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getNike()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getNoPayPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->noPayPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getNoQueryPwdUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->noQueryPwdUser:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->otherLoginId:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealNamed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->realNamed:Ljava/lang/String;

    return-object v0
.end method

.method public getSecuredLogonId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ali/user/mobile/account/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->logonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ali/user/mobile/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->logonId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecuredMobileNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/ali/user/mobile/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingAddressCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->shippingAddressCount:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->customerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->nick:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "REALNAMED"

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->realNamed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Y"

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isCertified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Y"

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isCertified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getStudentCertify()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->studentCertify:Ljava/lang/String;

    return-object v0
.end method

.method public getTaobaoNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->taobaoNick:Ljava/lang/String;

    return-object v0
.end method

.method public getTaobaoSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->taobaoSid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletEdition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->walletEdition:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoLogin()Z
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanTrue:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->autoLogin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBindCard()Z
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanTrue:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isBindCard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCertifyStatusOK()Z
    .locals 2

    const-string/jumbo v0, "REALNAMED"

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getRealNamed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Y"

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getIsCertified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewUser()Z
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanTrue:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isNewUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNoQueryPwdUser()Z
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanTrue:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->noQueryPwdUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isShowMiniSwitch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanTrue:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShowWalletEditionSwitch()Z
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanTrue:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShowWalletEditionSwitchStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public isWirelessUser()Z
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/account/bean/UserInfo;->sBooleanTrue:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isWirelessUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoLogin(Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "UserInfo"

    const-string/jumbo v1, "setAutoLogin=false"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/account/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->autoLogin:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->logonId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/ali/user/mobile/account/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setBindCard(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isBindCard:Ljava/lang/String;

    return-void
.end method

.method public setCustomerType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->customerType:Ljava/lang/String;

    return-void
.end method

.method public setExternToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->exterToken:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->gender:Ljava/lang/String;

    return-void
.end method

.method public setHavanaId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->havanaId:Ljava/lang/String;

    return-void
.end method

.method public setIsAutoLoginStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->autoLogin:Ljava/lang/String;

    return-void
.end method

.method public setIsBindCardStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isBindCard:Ljava/lang/String;

    return-void
.end method

.method public setIsCertified(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isCertified:Ljava/lang/String;

    return-void
.end method

.method public setIsNewUserStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isNewUser:Ljava/lang/String;

    return-void
.end method

.method public setIsWirelessUserStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isWirelessUser:Ljava/lang/String;

    return-void
.end method

.method public setLoginEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginEmail:Ljava/lang/String;

    return-void
.end method

.method public setLoginMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginMobile:Ljava/lang/String;

    return-void
.end method

.method public setLoginTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginTime:Ljava/lang/String;

    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginToken:Ljava/lang/String;

    return-void
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->logonId:Ljava/lang/String;

    return-void
.end method

.method public setMemberGrade(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->memberGrade:Ljava/lang/String;

    return-void
.end method

.method public setMiniMode(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->walletEdition:Ljava/lang/String;

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setNewUser(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isNewUser:Ljava/lang/String;

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->nick:Ljava/lang/String;

    return-void
.end method

.method public setNike(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->nick:Ljava/lang/String;

    return-void
.end method

.method public setNoPayPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->noPayPwd:Ljava/lang/String;

    return-void
.end method

.method public setNoQueryPwdUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->noQueryPwdUser:Ljava/lang/String;

    return-void
.end method

.method public setOtherLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->otherLoginId:Ljava/lang/String;

    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->realName:Ljava/lang/String;

    return-void
.end method

.method public setRealNamed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->realNamed:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setShippingAddressCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->shippingAddressCount:Ljava/lang/String;

    return-void
.end method

.method public setShowMiniSwitch(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    return-void
.end method

.method public setShowWalletEditionSwitch(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    return-void
.end method

.method public setShowWalletEditionSwitchStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    return-void
.end method

.method public setStudentCertify(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->studentCertify:Ljava/lang/String;

    return-void
.end method

.method public setTaobaoNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->taobaoNick:Ljava/lang/String;

    return-void
.end method

.method public setTaobaoSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->taobaoSid:Ljava/lang/String;

    return-void
.end method

.method public setUserAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userAvatar:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userType:Ljava/lang/String;

    return-void
.end method

.method public setWalletEdition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->walletEdition:Ljava/lang/String;

    return-void
.end method

.method public setWirelessUser(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isWirelessUser:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->logonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->autoLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->noPayPwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isCertified:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->taobaoSid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->exterToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isWirelessUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isBindCard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->realNamed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->customerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isNewUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->havanaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->memberGrade:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->walletEdition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->isShowWalletEditionSwitch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->realName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->taobaoNick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->loginMobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->studentCertify:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->shippingAddressCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->otherLoginId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserInfo;->noQueryPwdUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
