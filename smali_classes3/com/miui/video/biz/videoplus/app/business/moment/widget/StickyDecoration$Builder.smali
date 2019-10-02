.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;
.super Ljava/lang/Object;
.source "StickyDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDecoration:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;


# direct methods
.method private constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$1;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;->mDecoration:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    return-void
.end method

.method public static init(Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;)Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$GroupInfoProvider;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration$Builder;->mDecoration:Lcom/miui/video/biz/videoplus/app/business/moment/widget/StickyDecoration;

    return-object v0
.end method
