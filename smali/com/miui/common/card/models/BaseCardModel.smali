.class public abstract Lcom/miui/common/card/models/BaseCardModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TEMPLATE_TYPE:Landroid/util/SparseIntArray;

.field public static final TYPE_ACTIVITY:Ljava/lang/String; = "003"

.field public static final TYPE_ADVERTISEMENT:Ljava/lang/String; = "001"

.field public static final TYPE_ADVERTISEMENT_TEST:Ljava/lang/String; = "0010"

.field public static final TYPE_CRAD:Ljava/lang/String; = "006"

.field public static final TYPE_FUNCTION:Ljava/lang/String; = "002"

.field public static final TYPE_LINE:Ljava/lang/String; = "005"

.field public static final TYPE_NEWS:Ljava/lang/String; = "004"


# instance fields
.field public button:Ljava/lang/String;

.field public canRrfreshFunctStatus:Z

.field public dataId:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field private isOverseaChannel:Z

.field private language:Ljava/lang/String;

.field protected transient layoutId:I

.field public negativeButtonText:Ljava/lang/String;

.field public noConvertView:Z

.field public positiveButtonText:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03005b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030057

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030056

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030058

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030059

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03004c

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030064

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03005e

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03004b

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03005a

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030043

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030050

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030052

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03005d

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03014a

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03004d

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030044

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030045

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030046

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030146

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03005c

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030040

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030041

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030042

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030065

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030060

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030055

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030054

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030066

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030143

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030144

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030147

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030145

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030090

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03008d

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03008f

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03008e

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030049

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f03004a

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030047

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030048

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->language:Ljava/lang/String;

    iput p1, p0, Lcom/miui/common/card/models/BaseCardModel;->layoutId:I

    return-void
.end method

.method public static getLayoutType(I)I
    .locals 1

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public static getLayoutTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getButton()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->button:Ljava/lang/String;

    return-object v0
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/BaseCardModel;->layoutId:I

    return v0
.end method

.method public getLayoutIdType()I
    .locals 2

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/miui/common/card/models/BaseCardModel;->layoutId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->negativeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->positiveButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isOverseaChannel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/BaseCardModel;->isOverseaChannel:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setButton(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->button:Ljava/lang/String;

    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->icon:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->language:Ljava/lang/String;

    return-void
.end method

.method public setLayoutId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/BaseCardModel;->layoutId:I

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->negativeButtonText:Ljava/lang/String;

    return-void
.end method

.method public setOverseaChannel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/BaseCardModel;->isOverseaChannel:Z

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->positiveButtonText:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    return-void
.end method

.method public abstract validate()Z
.end method
