.class Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils$Holder;
.super Ljava/lang/Object;
.source "VideoPlusCommonSpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
