.class public final synthetic Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$R9VaA72iyfF-4Jl2PFt6cpW9rac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$R9VaA72iyfF-4Jl2PFt6cpW9rac;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$R9VaA72iyfF-4Jl2PFt6cpW9rac;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$R9VaA72iyfF-4Jl2PFt6cpW9rac;->f$2:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$R9VaA72iyfF-4Jl2PFt6cpW9rac;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$R9VaA72iyfF-4Jl2PFt6cpW9rac;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$R9VaA72iyfF-4Jl2PFt6cpW9rac;->f$2:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;->lambda$generateOtherPage$56(Ljava/util/List;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
