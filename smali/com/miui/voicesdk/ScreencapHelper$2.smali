.class Lcom/miui/voicesdk/ScreencapHelper$2;
.super Ljava/lang/Object;
.source "ScreencapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/voicesdk/ScreencapHelper;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/voicesdk/ScreencapHelper;


# direct methods
.method constructor <init>(Lcom/miui/voicesdk/ScreencapHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/ScreencapHelper$2;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper$2;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-static {v0}, Lcom/miui/voicesdk/ScreencapHelper;->access$100(Lcom/miui/voicesdk/ScreencapHelper;)V

    return-void
.end method
