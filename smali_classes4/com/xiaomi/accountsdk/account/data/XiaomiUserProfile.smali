.class public Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;
.super Ljava/lang/Object;
.source "XiaomiUserProfile.java"


# instance fields
.field private mBirthday:Ljava/util/Calendar;

.field private mGender:Lcom/xiaomi/accountsdk/account/data/Gender;

.field private mUserId:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mUserId:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->userName:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mUserName:Ljava/lang/String;

    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->gender:Lcom/xiaomi/accountsdk/account/data/Gender;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mGender:Lcom/xiaomi/accountsdk/account/data/Gender;

    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->birthday:Ljava/util/Calendar;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mBirthday:Ljava/util/Calendar;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mUserId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mUserName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mGender:Lcom/xiaomi/accountsdk/account/data/Gender;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mBirthday:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mBirthday:Ljava/util/Calendar;

    return-object v0
.end method

.method public getGender()Lcom/xiaomi/accountsdk/account/data/Gender;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mGender:Lcom/xiaomi/accountsdk/account/data/Gender;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthday(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mBirthday:Ljava/util/Calendar;

    return-void
.end method

.method public setGender(Lcom/xiaomi/accountsdk/account/data/Gender;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mGender:Lcom/xiaomi/accountsdk/account/data/Gender;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->mUserName:Ljava/lang/String;

    return-void
.end method
