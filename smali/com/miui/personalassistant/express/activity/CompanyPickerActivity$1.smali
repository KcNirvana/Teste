.class Lcom/miui/personalassistant/express/activity/CompanyPickerActivity$1;
.super Ljava/lang/Object;
.source "CompanyPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->setupCustomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity$1;->this$0:Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->finish()V

    return-void
.end method
