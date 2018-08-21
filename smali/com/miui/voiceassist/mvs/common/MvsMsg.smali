.class public Lcom/miui/voiceassist/mvs/common/MvsMsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/voiceassist/mvs/common/MvsMsg;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_ABANDON_INTERACT:I = 0x11

.field public static final MSG_ABANDON_INTERACT_ACK:I = 0x12

.field public static final MSG_CLICK_EVENT:I = 0x10

.field public static final MSG_MVSRESULT:I = 0x6

.field public static final MSG_MVSRESULT_ACK:I = 0x7

.field public static final MSG_MVSSPEECHRESULT:I = 0x5

.field public static final MSG_MVS_AI_STATE:I = 0xe

.field public static final MSG_MVS_CONTEXT:I = 0x9

.field public static final MSG_MVS_CONTEXT_ACK:I = 0xa

.field public static final MSG_MVS_ERROR:I = 0xb

.field public static final MSG_MVS_GET_AI_STATE:I = 0xf

.field public static final MSG_MVS_QUERYHINTS:I = 0x8

.field public static final MSG_MVS_REQUEST:I = 0xc

.field public static final MSG_MVS_REQUEST_ACK:I = 0xd

.field public static final MSG_REGISTER:I = 0x1

.field public static final MSG_REGISTER_ACK:I = 0x2

.field public static final MSG_UNREGISTER:I = 0x3

.field public static final MSG_UNREGISTER_ACK:I = 0x4


# instance fields
.field private final extra:Landroid/os/Bundle;

.field private final msg:Ljava/lang/String;

.field private final msgToken:Ljava/lang/String;

.field private final mvsVersion:I

.field private final pkg:Ljava/lang/String;

.field private final what:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/voiceassist/mvs/common/a;

    invoke-direct {v0}, Lcom/miui/voiceassist/mvs/common/a;-><init>()V

    sput-object v0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->what:I

    iput p2, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->mvsVersion:I

    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    :cond_0
    iput-object p3, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->pkg:Ljava/lang/String;

    if-nez p4, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->msgToken:Ljava/lang/String;

    if-nez p5, :cond_2

    const-string/jumbo p5, ""

    :cond_2
    iput-object p5, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->msg:Ljava/lang/String;

    if-nez p6, :cond_3

    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    :cond_3
    iput-object p6, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->extra:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->what:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->mvsVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->pkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->msgToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->extra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->extra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->msgToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMvsVersion()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->mvsVersion:I

    return v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getWhat()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->what:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->mvsVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->msgToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsMsg;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
