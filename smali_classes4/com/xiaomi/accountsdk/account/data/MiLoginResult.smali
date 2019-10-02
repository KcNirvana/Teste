.class public Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
.super Ljava/lang/Object;
.source "MiLoginResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_ACCESS_DENIED:I = 0x7

.field public static final ERROR_CAPTCHA:I = 0x1

.field public static final ERROR_ILLEGAL_DEVICE_ID:I = 0x9

.field public static final ERROR_NEED_NOTIFICATION:I = 0x3

.field public static final ERROR_NEED_STEP2_LOGIN:I = 0x2

.field public static final ERROR_NETWORK:I = 0x5

.field public static final ERROR_PASSWORD:I = 0x4

.field public static final ERROR_REMOTE_FATAL_ERROR:I = 0xd

.field public static final ERROR_SERVER:I = 0x6

.field public static final ERROR_SSL:I = 0xa

.field public static final ERROR_SSL_HAND_SHAKE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_STEP2_CODE:I = 0xb

.field public static final ERROR_UNKNOWN:I = 0xc

.field public static final ERROR_USER_NAME:I = 0x8

.field private static final KEY_HAS_PWD:Ljava/lang/String; = "has_pwd"

.field private static final KEY_STS_ERROR:Ljava/lang/String; = "sts_error"

.field public static final SUCCESS:I


# instance fields
.field public final accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

.field public final captchaUrl:Ljava/lang/String;

.field public final hasPwd:Z

.field public isStsCallbackError:Z

.field public final metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field public final notificationUrl:Ljava/lang/String;

.field public final resultCode:I

.field public final serviceId:Ljava/lang/String;

.field public final step1Token:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->serviceId:Ljava/lang/String;

    const-class v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->captchaUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->notificationUrl:Ljava/lang/String;

    const-class v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->step1Token:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->resultCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "has_pwd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->hasPwd:Z

    if-eqz p1, :cond_1

    const-string v0, "sts_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->isStsCallbackError:Z

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$000(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$100(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->serviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$200(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$300(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->captchaUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$400(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->notificationUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$500(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$600(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->step1Token:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$700(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->resultCode:I

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$800(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->hasPwd:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->access$900(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->isStsCallbackError:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;-><init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->captchaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->notificationUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->step1Token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->resultCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "has_pwd"

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->hasPwd:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "sts_error"

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->isStsCallbackError:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
