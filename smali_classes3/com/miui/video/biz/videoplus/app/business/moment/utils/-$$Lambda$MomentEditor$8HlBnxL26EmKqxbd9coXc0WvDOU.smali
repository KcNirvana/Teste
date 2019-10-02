.class public final synthetic Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$8HlBnxL26EmKqxbd9coXc0WvDOU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

.field private final synthetic f$1:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$8HlBnxL26EmKqxbd9coXc0WvDOU;->f$0:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$8HlBnxL26EmKqxbd9coXc0WvDOU;->f$1:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$8HlBnxL26EmKqxbd9coXc0WvDOU;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$8HlBnxL26EmKqxbd9coXc0WvDOU;->f$0:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$8HlBnxL26EmKqxbd9coXc0WvDOU;->f$1:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentEditor$8HlBnxL26EmKqxbd9coXc0WvDOU;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->lambda$delete$50(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnDeleteListener;Landroid/content/Context;)V

    return-void
.end method
