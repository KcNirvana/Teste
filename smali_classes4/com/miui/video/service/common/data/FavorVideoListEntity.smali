.class public Lcom/miui/video/service/common/data/FavorVideoListEntity;
.super Lcom/miui/video/framework/base/entity/ResponseEntity;
.source "FavorVideoListEntity.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/base/entity/ResponseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/data/FavorVideoListEntity;->data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/common/data/FavorVideoListEntity;->data:Ljava/util/List;

    return-void
.end method
