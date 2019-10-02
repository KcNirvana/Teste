.class public final synthetic Lcom/miui/video/biz/pgc/data/-$$Lambda$AuthorDataSource$G50w1pdLaEAAJifunLrEJhpvKoc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/pgc/data/AuthorDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/pgc/data/AuthorDataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$AuthorDataSource$G50w1pdLaEAAJifunLrEJhpvKoc;->f$0:Lcom/miui/video/biz/pgc/data/AuthorDataSource;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/data/-$$Lambda$AuthorDataSource$G50w1pdLaEAAJifunLrEJhpvKoc;->f$0:Lcom/miui/video/biz/pgc/data/AuthorDataSource;

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-static {v0, p1}, Lcom/miui/video/biz/pgc/data/AuthorDataSource;->lambda$loadAuthorDetail$19(Lcom/miui/video/biz/pgc/data/AuthorDataSource;Lcom/miui/video/base/common/net/model/ModelData;)V

    return-void
.end method
