.class final Lcom/miui/video/framework/utils/AppUtils$1;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/framework/utils/AppUtils;->installApk(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apkPath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/utils/AppUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/framework/utils/AppUtils$1;->val$apkPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/framework/utils/AppUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/framework/utils/AppUtils$1;->val$apkPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/AppUtils;->installApkByUser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
