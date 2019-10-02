.class public Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;
.super Ljava/lang/Object;
.source "SNSTokenLoginResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final callback:Ljava/lang/String;

.field public final notificationUrl:Ljava/lang/String;

.field public final openId:Ljava/lang/String;

.field public final passToken:Ljava/lang/String;

.field public final sid:Ljava/lang/String;

.field public final snsBindTryUrl:Ljava/lang/String;

.field public final snsTokenPh:Ljava/lang/String;

.field public final status:I

.field public final userId:Ljava/lang/String;

.field public final webViewCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$1;

    invoke-direct {v0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->sid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->webViewCallback:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->callback:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->notificationUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->passToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsBindTryUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsTokenPh:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->openId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$000(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->status:I

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$100(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->sid:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$200(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->webViewCallback:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$300(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->callback:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$400(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->notificationUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$500(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$600(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->passToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$700(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsBindTryUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$800(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsTokenPh:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->access$900(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->openId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;-><init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->sid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->webViewCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->callback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->notificationUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->passToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsBindTryUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsTokenPh:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->openId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
