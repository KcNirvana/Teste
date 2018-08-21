.class public Lcom/miui/personalassistant/model/SettingItem;
.super Ljava/lang/Object;
.source "SettingItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/personalassistant/model/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final FIELD_PREFKEY:Ljava/lang/String; = "prefKey"


# instance fields
.field private hasSettingDetailPage:Z

.field id:I

.field private isDisable:Z

.field private packageName:Ljava/lang/String;

.field private prefKey:Ljava/lang/String;

.field private privApp:Z

.field private resContentDetailId:I

.field private resContentId:I

.field private resIconId:I

.field private resImageId:I

.field private resListIconId:I

.field private resTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/model/SettingItem$1;

    invoke-direct {v0}, Lcom/miui/personalassistant/model/SettingItem$1;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/model/SettingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;ZIII)V
    .locals 12

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/miui/personalassistant/model/SettingItem;-><init>(ILjava/lang/String;IIILjava/lang/String;ZIIIZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;ZIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/personalassistant/model/SettingItem;->id:I

    iput p3, p0, Lcom/miui/personalassistant/model/SettingItem;->resTitleId:I

    iput p4, p0, Lcom/miui/personalassistant/model/SettingItem;->resContentId:I

    iput p5, p0, Lcom/miui/personalassistant/model/SettingItem;->resContentDetailId:I

    iput p9, p0, Lcom/miui/personalassistant/model/SettingItem;->resImageId:I

    iput-object p2, p0, Lcom/miui/personalassistant/model/SettingItem;->packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/personalassistant/model/SettingItem;->prefKey:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/miui/personalassistant/model/SettingItem;->privApp:Z

    iput p10, p0, Lcom/miui/personalassistant/model/SettingItem;->resIconId:I

    iput p8, p0, Lcom/miui/personalassistant/model/SettingItem;->resListIconId:I

    iput-boolean p11, p0, Lcom/miui/personalassistant/model/SettingItem;->hasSettingDetailPage:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/model/SettingItem;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resTitleId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resContentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resContentDetailId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resImageId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/model/SettingItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/personalassistant/model/SettingItem;->isDisable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/model/SettingItem;->prefKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/personalassistant/model/SettingItem;->privApp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resListIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/miui/personalassistant/model/SettingItem;->hasSettingDetailPage:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentId()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resContentId:I

    return v0
.end method

.method public getDetailBriefImage()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resImageId:I

    return v0
.end method

.method public getDisable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/SettingItem;->isDisable:Z

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->id:I

    return v0
.end method

.method public getListIconId()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resListIconId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/SettingItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/SettingItem;->prefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResContentDetailId()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resContentDetailId:I

    return v0
.end method

.method public getResIconId()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resIconId:I

    return v0
.end method

.method public getTitleId()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resTitleId:I

    return v0
.end method

.method public hasSettingDetailPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/SettingItem;->hasSettingDetailPage:Z

    return v0
.end method

.method public isPrivApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/SettingItem;->privApp:Z

    return v0
.end method

.method public setDetailBriefImage(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/SettingItem;->resImageId:I

    return-void
.end method

.method public setDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/model/SettingItem;->isDisable:Z

    return-void
.end method

.method public setHasSettingDetailPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/model/SettingItem;->hasSettingDetailPage:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/SettingItem;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPrefKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/SettingItem;->prefKey:Ljava/lang/String;

    return-void
.end method

.method public setResIconId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/SettingItem;->resIconId:I

    return-void
.end method

.method public setResListIconId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/SettingItem;->resListIconId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"prefKey\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/SettingItem;->prefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resTitleId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resContentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resContentDetailId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resImageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/model/SettingItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/SettingItem;->isDisable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/miui/personalassistant/model/SettingItem;->prefKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/SettingItem;->privApp:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/miui/personalassistant/model/SettingItem;->resListIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/SettingItem;->hasSettingDetailPage:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
