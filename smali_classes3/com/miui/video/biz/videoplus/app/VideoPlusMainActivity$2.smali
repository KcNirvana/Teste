.class Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$2;
.super Ljava/lang/Object;
.source "VideoPlusMainActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->initViewsValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$2;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    const-string v0, "VideoPlusMainActivity"

    const-string v1, "onBackStackChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
