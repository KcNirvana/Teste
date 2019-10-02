.class final Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$notifyLoaded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JsonConfigLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;->notifyLoaded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "target",
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $from:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$notifyLoaded$1;->$from:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$notifyLoaded$1;->invoke(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$notifyLoaded$1;->$from:I

    invoke-interface {p1, v0}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$OnLoadListener;->onLoad(I)V

    return-void
.end method
