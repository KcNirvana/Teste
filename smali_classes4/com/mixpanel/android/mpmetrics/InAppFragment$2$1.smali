.class Lcom/mixpanel/android/mpmetrics/InAppFragment$2$1;
.super Ljava/lang/Object;
.source "InAppFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/InAppFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mixpanel/android/mpmetrics/InAppFragment$2;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/InAppFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2$1;->this$1:Lcom/mixpanel/android/mpmetrics/InAppFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2$1;->this$1:Lcom/mixpanel/android/mpmetrics/InAppFragment$2;

    iget-object p1, p1, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$200(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
