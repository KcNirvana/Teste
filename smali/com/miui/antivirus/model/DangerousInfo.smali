.class public Lcom/miui/antivirus/model/DangerousInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private alG:Ljava/lang/String;

.field private alH:Ljava/lang/String;

.field private alI:I

.field private alJ:Ljava/lang/String;

.field private alK:I

.field private language:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/model/k;

    invoke-direct {v0}, Lcom/miui/antivirus/model/k;-><init>()V

    sput-object v0, Lcom/miui/antivirus/model/DangerousInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e9

    iput v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alK:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e9

    iput v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alK:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alI:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alJ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alK:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->language:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alH:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/antivirus/model/DangerousInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/model/DangerousInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static arn(Lorg/json/JSONObject;)Lcom/miui/antivirus/model/DangerousInfo;
    .locals 3

    new-instance v0, Lcom/miui/antivirus/model/DangerousInfo;

    invoke-direct {v0}, Lcom/miui/antivirus/model/DangerousInfo;-><init>()V

    const-string/jumbo v1, "nt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->alI:I

    const-string/jumbo v1, "pkg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "sign"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->alJ:Ljava/lang/String;

    const-string/jumbo v1, "ver"

    const/16 v2, -0x3e9

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->alK:I

    const-string/jumbo v1, "md5"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->alG:Ljava/lang/String;

    const-string/jumbo v1, "language"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->language:Ljava/lang/String;

    const-string/jumbo v1, "msg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/antivirus/model/DangerousInfo;->alH:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public arm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alH:Ljava/lang/String;

    return-object v0
.end method

.method public aro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alJ:Ljava/lang/String;

    return-object v0
.end method

.method public arp()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alK:I

    return v0
.end method

.method public arq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alG:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyType()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alI:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alK:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/model/DangerousInfo;->alH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
