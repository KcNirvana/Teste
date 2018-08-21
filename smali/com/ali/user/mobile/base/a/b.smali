.class public Lcom/ali/user/mobile/base/a/b;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ali/user/mobile/base/a/b;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/ali/user/mobile/base/a/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/b;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/ali/user/mobile/base/a/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/a/b;->b:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/ali/user/mobile/base/a/b;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/b;->b:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/b;->a:Landroid/app/Activity;

    new-instance v1, Lcom/ali/user/mobile/base/a/i;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/base/a/i;-><init>(Lcom/ali/user/mobile/base/a/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ali/user/mobile/base/a/b;->a(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/b;->a:Landroid/app/Activity;

    new-instance v1, Lcom/ali/user/mobile/base/a/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/base/a/g;-><init>(Lcom/ali/user/mobile/base/a/b;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 10

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/a/b;->a()V

    iget-object v9, p0, Lcom/ali/user/mobile/base/a/b;->a:Landroid/app/Activity;

    new-instance v0, Lcom/ali/user/mobile/base/a/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ali/user/mobile/base/a/c;-><init>(Lcom/ali/user/mobile/base/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$b;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$a;)V
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/ali/user/mobile/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$b;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$a;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$b;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$a;Ljava/lang/Boolean;)V
    .locals 11

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/a/b;->a()V

    iget-object v10, p0, Lcom/ali/user/mobile/base/a/b;->a:Landroid/app/Activity;

    new-instance v0, Lcom/ali/user/mobile/base/a/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/ali/user/mobile/base/a/f;-><init>(Lcom/ali/user/mobile/base/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$b;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$a;Ljava/lang/Boolean;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/a/b;->a()V

    iget-object v6, p0, Lcom/ali/user/mobile/base/a/b;->a:Landroid/app/Activity;

    new-instance v0, Lcom/ali/user/mobile/base/a/h;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/mobile/base/a/h;-><init>(Lcom/ali/user/mobile/base/a/b;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
