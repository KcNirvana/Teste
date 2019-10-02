.class public final synthetic Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$LWHKw1fREW4bI6AyjfPY8e20Tmg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$LWHKw1fREW4bI6AyjfPY8e20Tmg;->f$0:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$LWHKw1fREW4bI6AyjfPY8e20Tmg;->f$0:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-static {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->lambda$getFavorVideoList$1(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;Lcom/miui/video/base/common/net/model/ModelData;)V

    return-void
.end method
