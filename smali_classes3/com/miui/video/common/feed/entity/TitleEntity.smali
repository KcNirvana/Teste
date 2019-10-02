.class public Lcom/miui/video/common/feed/entity/TitleEntity;
.super Lcom/miui/video/common/feed/entity/CoreEntity;
.source "TitleEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private max:I

.field private min:I

.field private selected:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->title:Ljava/lang/String;

    iput p2, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->selected:I

    iput p3, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->max:I

    iput p4, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->min:I

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->min:I

    return v0
.end method

.method public getSelected()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->selected:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->min:I

    return-void
.end method

.method public setSelected(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->selected:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TitleEntity;->title:Ljava/lang/String;

    return-void
.end method
