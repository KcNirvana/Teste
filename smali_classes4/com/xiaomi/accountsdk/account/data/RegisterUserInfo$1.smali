.class final Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$1;
.super Ljava/lang/Object;
.source "RegisterUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    const-string v1, "register_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;-><init>(I)V

    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "user_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->userName(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "avatar_address"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->avatarAddress(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "ticket_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->ticketToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->phone(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "masked_user_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->maskedUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "has_pwd"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->hasPwd(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "bind_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->bindTime(J)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "need_toast"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->needToast(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "need_get_active_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->needGetActiveTime(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v1, "register_pwd"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->registerPwd(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->build()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$1;->newArray(I)[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object p1

    return-object p1
.end method
