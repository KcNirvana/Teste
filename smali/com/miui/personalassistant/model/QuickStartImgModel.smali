.class public Lcom/miui/personalassistant/model/QuickStartImgModel;
.super Ljava/lang/Object;
.source "QuickStartImgModel.java"


# static fields
.field public static final AREA_FIRST:I = 0x1

.field public static final AREA_FOURTH:I = 0x8

.field public static final AREA_SECOND:I = 0x2

.field public static final AREA_THIRD:I = 0x4


# instance fields
.field private mArea:I

.field private mImgIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/miui/personalassistant/model/QuickStartImgModel;->mImgIdList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/miui/personalassistant/model/QuickStartImgModel;->mArea:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/model/QuickStartImgModel;->mImgIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/model/QuickStartImgModel;->mImgIdList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/miui/personalassistant/model/QuickStartImgModel;->mArea:I

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/QuickStartImgModel;->mArea:I

    return v0
.end method

.method public getImgIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/model/QuickStartImgModel;->mImgIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setArea(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/QuickStartImgModel;->mArea:I

    return-void
.end method

.method public setImgIdList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/model/QuickStartImgModel;->mImgIdList:Ljava/util/ArrayList;

    return-void
.end method
