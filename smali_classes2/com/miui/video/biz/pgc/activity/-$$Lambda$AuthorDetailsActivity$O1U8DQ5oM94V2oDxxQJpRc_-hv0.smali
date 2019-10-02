.class public final synthetic Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$O1U8DQ5oM94V2oDxxQJpRc_-hv0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/video/common/feed/architeture/action/ActionListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

.field private final synthetic f$1:Lcom/miui/video/biz/pgc/data/AuthorDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Lcom/miui/video/biz/pgc/data/AuthorDataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$O1U8DQ5oM94V2oDxxQJpRc_-hv0;->f$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$O1U8DQ5oM94V2oDxxQJpRc_-hv0;->f$1:Lcom/miui/video/biz/pgc/data/AuthorDataSource;

    return-void
.end method


# virtual methods
.method public final call(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$O1U8DQ5oM94V2oDxxQJpRc_-hv0;->f$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/activity/-$$Lambda$AuthorDetailsActivity$O1U8DQ5oM94V2oDxxQJpRc_-hv0;->f$1:Lcom/miui/video/biz/pgc/data/AuthorDataSource;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->lambda$initInfoStream$24(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Lcom/miui/video/biz/pgc/data/AuthorDataSource;Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method
