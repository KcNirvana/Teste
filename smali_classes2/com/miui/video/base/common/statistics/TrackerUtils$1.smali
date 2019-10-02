.class final Lcom/miui/video/base/common/statistics/TrackerUtils$1;
.super Ljava/lang/Object;
.source "TrackerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$target:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/statistics/TrackerUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/base/common/statistics/TrackerUtils$1;->val$params:Ljava/util/Map;

    iput p3, p0, Lcom/miui/video/base/common/statistics/TrackerUtils$1;->val$target:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/common/statistics/TrackerUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/base/common/statistics/TrackerUtils$1;->val$params:Ljava/util/Map;

    iget v2, p0, Lcom/miui/video/base/common/statistics/TrackerUtils$1;->val$target:I

    invoke-static {v0, v1, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->access$000(Landroid/content/Context;Ljava/util/Map;I)V

    return-void
.end method
