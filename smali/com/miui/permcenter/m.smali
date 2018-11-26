.class final Lcom/miui/permcenter/m;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# instance fields
.field final synthetic Rs:Lcom/miui/permcenter/DebugSettingsAcitivty;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/DebugSettingsAcitivty;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/m;->Rs:Lcom/miui/permcenter/DebugSettingsAcitivty;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/n;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/n;-><init>(Lcom/miui/permcenter/m;)V

    return-object v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
