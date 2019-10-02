.class final Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager$Holder;
.super Ljava/lang/Object;
.source "GreenDaoDbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->access$000()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager$1;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
