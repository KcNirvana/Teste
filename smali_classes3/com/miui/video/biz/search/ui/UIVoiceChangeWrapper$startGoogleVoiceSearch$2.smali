.class final Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$2;
.super Ljava/lang/Object;
.source "UIVoiceChangeWrapper.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->startGoogleVoiceSearch(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onCancel"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $source:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$2;->this$0:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;

    iput-object p2, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$2;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$2;->$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$2;->this$0:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$2;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$2;->$source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->startGoogleVoiceSearch(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
