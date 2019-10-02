.class public final synthetic Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/-$$Lambda$VideoQueryUtils$ScanSdCardUtils$36EcWA0H0_-UgGlz-wQH7hU8RtQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/-$$Lambda$VideoQueryUtils$ScanSdCardUtils$36EcWA0H0_-UgGlz-wQH7hU8RtQ;->f$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/-$$Lambda$VideoQueryUtils$ScanSdCardUtils$36EcWA0H0_-UgGlz-wQH7hU8RtQ;->f$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;

    invoke-static {v0, p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;->lambda$scanSdCardVideos$3(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$ScanSdCardUtils;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
