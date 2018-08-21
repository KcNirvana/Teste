.class public Lcom/miui/share/chooser/ShareInfo;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# instance fields
.field public flag:I

.field icon:Landroid/graphics/drawable/Drawable;

.field onClickListener:Landroid/view/View$OnClickListener;

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/miui/share/chooser/ShareInfo;
    .locals 1

    new-instance v0, Lcom/miui/share/chooser/ShareInfo;

    invoke-direct {v0}, Lcom/miui/share/chooser/ShareInfo;-><init>()V

    iput p0, v0, Lcom/miui/share/chooser/ShareInfo;->flag:I

    iput-object p1, v0, Lcom/miui/share/chooser/ShareInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p2, v0, Lcom/miui/share/chooser/ShareInfo;->title:Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/miui/share/chooser/ShareInfo;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/miui/share/chooser/ShareInfo;
    .locals 2

    invoke-static {p0, p2}, Lcom/miui/share/ShareUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/miui/share/ShareUtils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v0, v1, p3}, Lcom/miui/share/chooser/ShareInfo;->create(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/miui/share/chooser/ShareInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createShareInfoActionSend(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/miui/share/chooser/ShareInfo;
    .locals 1

    new-instance v0, Lcom/miui/share/chooser/ShareInfo$1;

    invoke-direct {v0, p4, p2, p3, p0}, Lcom/miui/share/chooser/ShareInfo$1;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/share/chooser/ShareInfo;->create(Landroid/content/Context;ILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/miui/share/chooser/ShareInfo;

    move-result-object v0

    return-object v0
.end method
