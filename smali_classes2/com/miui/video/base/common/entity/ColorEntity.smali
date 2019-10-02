.class public Lcom/miui/video/base/common/entity/ColorEntity;
.super Ljava/lang/Object;
.source "ColorEntity.java"


# instance fields
.field private bgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bg_color"
    .end annotation
.end field

.field private bgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bg_url"
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_url"
    .end annotation
.end field

.field private iconUrlP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_url_p"
    .end annotation
.end field

.field private titleColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title_color"
    .end annotation
.end field

.field private titleColorP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title_color_p"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/ColorEntity;->bgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/ColorEntity;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/ColorEntity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrlP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/ColorEntity;->iconUrlP:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/ColorEntity;->titleColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColorP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/ColorEntity;->titleColorP:Ljava/lang/String;

    return-object v0
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/ColorEntity;->bgColor:Ljava/lang/String;

    return-void
.end method

.method public setBgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/ColorEntity;->bgUrl:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/ColorEntity;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setIconUrlP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/ColorEntity;->iconUrlP:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/ColorEntity;->titleColor:Ljava/lang/String;

    return-void
.end method

.method public setTitleColorP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/ColorEntity;->titleColorP:Ljava/lang/String;

    return-void
.end method
