.class Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable$1;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable$1;->this$1:Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable$1;->this$1:Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->access$300(Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable$1;->this$1:Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->access$400(Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable$1;->this$1:Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->access$300(Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
