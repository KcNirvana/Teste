.class Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;
.super Ljava/lang/Object;
.source "PaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;

.field final synthetic val$drawableKey:Ljava/lang/String;

.field final synthetic val$icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;->val$drawableKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;->val$icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->access$800(Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;->val$drawableKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;->this$1:Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->access$800(Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;->val$icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
