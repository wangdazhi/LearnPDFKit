//
//  demoDC.h
//  PDFStduy
//
//  Created by wangdazhitech on 3/26/14.
//  Copyright (c) 2014 wangdazhi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Quartz/Quartz.h>
@interface demoDC : NSDocument
{
    IBOutlet PDFView * mainPDFView;
   // IBOutlet FPDocumentView *_document_view;
    IBOutlet NSWindow *_document_window;
    //IBOutlet NSSegmentedControl *_one_up_vs_two_up_vs_book;
    //IBOutlet NSSegmentedControl *_single_vs_continuous;
    //IBOutlet NSView *_print_accessory_view;
    
    //NSNumber *_print_original_pdf;
    
    NSData *_originalPDFData;
    //NSMutableArray *_tempOverlayGraphics;
    //int _tempOverlayGraphicsVersion;
    
    PDFDocument *_pdf_document;

}
@end
