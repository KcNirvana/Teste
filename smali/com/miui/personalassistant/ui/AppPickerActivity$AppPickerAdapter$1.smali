.class Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$1;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;

.field final synthetic val$item:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$1;->this$1:Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$1;->val$item:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$1;->this$1:Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->access$200(Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;)Lcom/miui/personalassistant/util/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$1;->val$item:Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/util/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
