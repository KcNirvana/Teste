.class public Lcom/miui/gamebooster/gamead/VerticalInRow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private content:Ljava/lang/String;

.field private contentType:I

.field private jj:I

.field private jk:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/gamead/p;

    invoke-direct {v0}, Lcom/miui/gamebooster/gamead/p;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/gamead/VerticalInRow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->contentType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->jj:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->content:Ljava/lang/String;

    const-class v0, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->jk:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    return-void
.end method

.method public static mo(Lorg/json/JSONObject;)Lcom/miui/gamebooster/gamead/VerticalInRow;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/gamead/VerticalInRow;

    invoke-direct {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/VerticalInRow;->content:Ljava/lang/String;

    :cond_1
    const-string/jumbo v1, "contentType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "contentType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/VerticalInRow;->contentType:I

    :cond_2
    const-string/jumbo v1, "positionIndex"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "positionIndex"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/VerticalInRow;->jj:I

    :cond_3
    const-string/jumbo v1, "videoInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    const-string/jumbo v2, "videoInfo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/VerticalInRow;->jk:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    :cond_4
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ml()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->contentType:I

    return v0
.end method

.method public mm()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/a/e;->fo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->content:Ljava/lang/String;

    return-object v0
.end method

.method public mn()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->jk:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->contentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->jj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/VerticalInRow;->jk:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
