
/*
http://opensource.org/licenses/

http://en.wikipedia.org/wiki/BSD_license
3-clause license ("New BSD License" or "Modified BSD License")

Copyright (c) 2012, Dartling project authors
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Dartling nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#import("dart:html");
#import("dart:uri");

#import("package:dartling/dartling.dart");
#import("package:dartling/dartling_app.dart");

// pub
//#import("package:category_question_link/category_question_link.dart");

#source("../lib/category_question/link/json/data.dart");
#source("../lib/category_question/link/json/model.dart");
#source("../lib/category_question/link/init.dart");
#source("../lib/category_question/link/members.dart");
#source("../lib/category_question/link/categories.dart");
#source("../lib/category_question/link/web_links.dart");
#source("../lib/category_question/link/interests.dart");
#source("../lib/category_question/link/comments.dart");
#source("../lib/category_question/link/questions.dart");
#source("../lib/gen/category_question/link/entries.dart");
#source("../lib/gen/category_question/link/members.dart");
#source("../lib/gen/category_question/link/categories.dart");
#source("../lib/gen/category_question/link/web_links.dart");
#source("../lib/gen/category_question/link/interests.dart");
#source("../lib/gen/category_question/link/comments.dart");
#source("../lib/gen/category_question/link/questions.dart");
#source("../lib/gen/category_question/models.dart");
#source("../lib/gen/category_question/repository.dart");
// pub

initCategoryQuestionData(CategoryQuestionRepo categoryQuestionRepo) {
   var categoryQuestionModels =
       categoryQuestionRepo.getDomainModels(CategoryQuestionRepo.categoryQuestionDomainCode);

   var categoryQuestionLinkEntries =
       categoryQuestionModels.getModelEntries(CategoryQuestionRepo.categoryQuestionLinkModelCode);
   initCategoryQuestionLink(categoryQuestionLinkEntries);
   //categoryQuestionLinkEntries.display();
   //categoryQuestionLinkEntries.displayJson();
}

showCategoryQuestionData(CategoryQuestionRepo categoryQuestionRepo) {
  var mainView = new View(document, "main");
  mainView.repo = categoryQuestionRepo;
  mainView.essentialOnly = true;
  new RepoMainSection(mainView);
}

void main() {
  var categoryQuestionRepo = new CategoryQuestionRepo();
  initCategoryQuestionData(categoryQuestionRepo);
  showCategoryQuestionData(categoryQuestionRepo);
}
