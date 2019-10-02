.class final Lcom/miui/video/common/feed/entity/TinyCardEntity$1;
.super Ljava/lang/Object;
.source "TinyCardEntity.java"

# interfaces
.implements Lcom/miui/video/framework/utils/JsonUtils$IParseJsonArrayEachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/entity/TinyCardEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/framework/utils/JsonUtils$IParseJsonArrayEachListener<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onParseJson(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity$1;->onParseJson(Ljava/lang/Object;Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onParseJson(Ljava/lang/Object;Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p2
.end method
