.class public Lcom/miui/appmanager/model/g;
.super Lcom/miui/appmanager/model/k;
.source ""


# instance fields
.field private aPT:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f03002f

    invoke-direct {p0, v0}, Lcom/miui/appmanager/model/k;-><init>(I)V

    return-void
.end method

.method static synthetic bhc(Lcom/miui/appmanager/model/g;)Landroid/text/SpannableString;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/g;->aPT:Landroid/text/SpannableString;

    return-object v0
.end method


# virtual methods
.method public bhb(Landroid/text/SpannableString;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/g;->aPT:Landroid/text/SpannableString;

    return-void
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/f;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/model/h;

    invoke-direct {v0, p1}, Lcom/miui/appmanager/model/h;-><init>(Landroid/view/View;)V

    return-object v0
.end method
