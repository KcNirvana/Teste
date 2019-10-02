.class Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$Holder;
.super Ljava/lang/Object;
.source "PageListStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
