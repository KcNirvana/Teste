.class public Lcom/miui/appmanager/model/s;
.super Lcom/miui/appmanager/model/a;
.source ""


# instance fields
.field private mGlobalADType:I


# direct methods
.method static synthetic bhT(Lcom/miui/appmanager/model/s;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/model/s;->mGlobalADType:I

    return v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/f;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/model/t;

    invoke-direct {v0, p0, p1}, Lcom/miui/appmanager/model/t;-><init>(Lcom/miui/appmanager/model/s;Landroid/view/View;)V

    return-object v0
.end method
